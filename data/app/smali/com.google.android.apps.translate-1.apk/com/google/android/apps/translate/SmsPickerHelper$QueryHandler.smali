.class Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SmsPickerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SmsPickerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SmsPickerHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/SmsPickerHelper;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    .line 53
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    #getter for: Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/SmsPickerHelper;->access$000(Lcom/google/android/apps/translate/SmsPickerHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 79
    :goto_f
    return-void

    .line 63
    :cond_10
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_29

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    iget-object v0, v0, Lcom/google/android/apps/translate/SmsPickerHelper;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    iget-object v0, v0, Lcom/google/android/apps/translate/SmsPickerHelper;->mEmptyMessage:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/translate/R$string;->msg_no_sms:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f

    .line 69
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    iget-object v0, v0, Lcom/google/android/apps/translate/SmsPickerHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3c

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    #getter for: Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/SmsPickerHelper;->access$000(Lcom/google/android/apps/translate/SmsPickerHelper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    iget-object v1, v1, Lcom/google/android/apps/translate/SmsPickerHelper;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 72
    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    const-string v1, "address"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/translate/SmsPickerHelper;->mAddressColumnIndex:I

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    const-string v1, "date"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/translate/SmsPickerHelper;->mDateColumnIndex:I

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    const-string v1, "body"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/translate/SmsPickerHelper;->mBodyColumnIndex:I

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    iput-object p3, v0, Lcom/google/android/apps/translate/SmsPickerHelper;->mCursor:Landroid/database/Cursor;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    #getter for: Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/SmsPickerHelper;->access$000(Lcom/google/android/apps/translate/SmsPickerHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->this$0:Lcom/google/android/apps/translate/SmsPickerHelper;

    #getter for: Lcom/google/android/apps/translate/SmsPickerHelper;->mListAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/SmsPickerHelper;->access$100(Lcom/google/android/apps/translate/SmsPickerHelper;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_f
.end method
