# flutter-starting-files

## Calling using network manager + action
```dart
  Future<void> _getTransactionDetails() async {
    setState(() {
      _loading = true;
    });

    NetworkHelperResult result = await NetworkHelper.getTransactionDetails(
      user: _appState.user!,
      transactionId: widget.recentTransaction.id,
    );

    if (!mounted) return;
    bool shouldReturn = await NetworkActionHelper.checkResponseAndPerformAction(
      result: result,
      context: context,
    );
    if (shouldReturn) return;

    if (!mounted) return;
    if (result.isSuccess) {
      setState(() {
        _transaction = result.data as Transaction;
        _loading = false;
      });
    } else {
      setState(() {
        _loading = false;
      });
      ManagerSnackBar.showSnackBar(
        context: context,
        message: result.message,
      );
    }
  }
```
