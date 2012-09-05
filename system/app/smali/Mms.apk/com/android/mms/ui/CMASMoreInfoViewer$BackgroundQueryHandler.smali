.class final Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CMASMoreInfoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CMASMoreInfoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASMoreInfoViewer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CMASMoreInfoViewer;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASMoreInfoViewer;

    .line 151
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 156
    const-string v0, "CMASMoreInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete with token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-nez p3, :cond_25

    .line 176
    :cond_24
    :goto_24
    return-void

    .line 162
    :cond_25
    packed-switch p1, :pswitch_data_3a

    goto :goto_24

    .line 165
    :pswitch_29
    const/4 v0, -0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 166
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoSetData(Landroid/database/Cursor;)V

    goto :goto_24

    .line 162
    nop

    :pswitch_data_3a
    .packed-switch 0x2537
        :pswitch_29
    .end packed-switch
.end method
