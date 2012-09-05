.class final Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CMASViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CMASViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASViewer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CMASViewer;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    .line 192
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 193
    return-void
.end method


# virtual methods
.method public CMASViewerSetData(Landroid/database/Cursor;)V
    .registers 12
    .parameter "cursor"

    .prologue
    const v9, 0x7f0902f4

    .line 242
    const-string v5, "CMASViewer"

    const-string v6, "CMASViewerSetData"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgId:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$402(Lcom/android/mms/ui/CMASViewer;J)J

    .line 245
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$502(Lcom/android/mms/ui/CMASViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$602(Lcom/android/mms/ui/CMASViewer;J)J

    .line 247
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0x15

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$702(Lcom/android/mms/ui/CMASViewer;I)I

    .line 248
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0x1d

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$802(Lcom/android/mms/ui/CMASViewer;J)J

    .line 249
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->mLocked:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$902(Lcom/android/mms/ui/CMASViewer;I)I

    .line 251
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMASViewerSetData msgId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgId:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$400(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgText "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$500(Lcom/android/mms/ui/CMASViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgServiceCategory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$700(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgDate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgExpiry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$800(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mLocked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mLocked:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$900(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_text_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0902bb

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1100(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$500(Lcom/android/mms/ui/CMASViewer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$700(Lcom/android/mms/ui/CMASViewer;)I

    move-result v5

    packed-switch v5, :pswitch_data_268

    .line 284
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0902e8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 285
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Wrong msgServiceCategory for CMAS with msgServiceCategory = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$700(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_105
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM dd, yyyy, h:mmaa"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 291
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 293
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1300(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$800(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_227

    .line 300
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM dd, yyyy, h:mmaa"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 301
    .local v4, formatter1:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 302
    .local v1, calendar1:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$800(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 303
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$800(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, expirty_time_text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1400(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v1           #calendar1:Ljava/util/Calendar;
    .end local v4           #formatter1:Ljava/text/SimpleDateFormat;
    :goto_1d0
    return-void

    .line 263
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #expirty_time_text:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    :pswitch_1d1
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$300(Lcom/android/mms/ui/CMASViewer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cmas_pending"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0902c8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_105

    .line 268
    :pswitch_1ef
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0902c9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_105

    .line 272
    :pswitch_1fd
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0902ca

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_105

    .line 276
    :pswitch_20b
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0902cb

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_105

    .line 280
    :pswitch_219
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0902cc

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_105

    .line 315
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #formatter:Ljava/text/SimpleDateFormat;
    :cond_227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0902f0

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .restart local v2       #expirty_time_text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1400(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const-string v5, "CMASViewer"

    const-string v6, "msgExpiry is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d0

    .line 259
    nop

    :pswitch_data_268
    .packed-switch 0x1000
        :pswitch_1d1
        :pswitch_1ef
        :pswitch_1fd
        :pswitch_20b
        :pswitch_219
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 324
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete with token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sparse-switch p1, :sswitch_data_22

    .line 333
    :goto_1b
    return-void

    .line 330
    :sswitch_1c
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #calls: Lcom/android/mms/ui/CMASViewer;->requestClose()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASViewer;->access$1500(Lcom/android/mms/ui/CMASViewer;)V

    goto :goto_1b

    .line 326
    :sswitch_data_22
    .sparse-switch
        0x70a -> :sswitch_1c
        0x25e4 -> :sswitch_1c
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 197
    const-string v0, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete with token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-nez p3, :cond_27

    .line 236
    .end local p2
    :cond_26
    :goto_26
    return-void

    .line 204
    .restart local p2
    :cond_27
    sparse-switch p1, :sswitch_data_92

    goto :goto_26

    .line 222
    :sswitch_2b
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 224
    .local v1, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 226
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/CMASViewer;->access$200(Lcom/android/mms/ui/CMASViewer;)Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/CMASViewer;->access$300(Lcom/android/mms/ui/CMASViewer;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_8e

    move v4, v6

    :goto_56
    if-eqz p3, :cond_90

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_90

    move v3, v6

    :goto_5f
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$300(Lcom/android/mms/ui/CMASViewer;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901bb

    invoke-static {v0, v4, v3, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_26

    .line 207
    .end local v1           #threadId:J
    .restart local p2
    :sswitch_70
    const/4 v0, -0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/CMASViewer;->access$000(Lcom/android/mms/ui/CMASViewer;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 209
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 211
    const-string v0, "CMASViewer"

    const-string v3, "onQueryComplete cursor moveToNext"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0, p3}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->CMASViewerSetData(Landroid/database/Cursor;)V

    goto :goto_26

    .end local p2
    .restart local v1       #threadId:J
    :cond_8e
    move v4, v7

    .line 226
    goto :goto_56

    :cond_90
    move v3, v7

    goto :goto_5f

    .line 204
    :sswitch_data_92
    .sparse-switch
        0x70b -> :sswitch_2b
        0x2537 -> :sswitch_70
    .end sparse-switch
.end method
