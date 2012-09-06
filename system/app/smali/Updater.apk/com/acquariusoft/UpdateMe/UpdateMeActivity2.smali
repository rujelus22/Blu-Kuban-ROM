.class public Lcom/acquariusoft/UpdateMe/UpdateMeActivity2;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity2;->setContentView(I)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/build.prop"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_15
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    :goto_25
    return-void

    :cond_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2e} :catch_2f

    goto :goto_1f

    :catch_2f
    move-exception v0

    const-string v1, "ANDRO_ASYNC"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4

    packed-switch p1, :pswitch_data_28

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity2;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity2;->a:Landroid/app/ProgressDialog;

    const-string v1, "Downloading file.."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity2;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity2;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity2;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity2;->a:Landroid/app/ProgressDialog;

    goto :goto_4

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
