.class Lcom/sec/app/RilErrorNotifier/PhoneErrService$1;
.super Ljava/lang/Object;
.source "PhoneErrService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/app/RilErrorNotifier/PhoneErrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;


# direct methods
.method constructor <init>(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$1;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 144
    packed-switch p2, :pswitch_data_36

    .line 167
    :goto_3
    return-void

    .line 147
    :pswitch_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 148
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 152
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 153
    .local v3, fileSize:I
    const/4 v5, 0x5

    :try_start_14
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 154
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 155
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 156
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_34

    .line 163
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$1;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v6, v6, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_3

    .line 159
    :catch_34
    move-exception v2

    .line 161
    .local v2, e:Ljava/io/IOException;
    goto :goto_3

    .line 144
    :pswitch_data_36
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method
