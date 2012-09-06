.class public LgY;
.super LrB;
.source "InvitationActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/InvitationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/InvitationActivity;Landroid/content/Context;Lrz;Ljava/lang/String;LFX;Ljava/lang/Class;LLz;Landroid/content/SharedPreferences;LIG;Landroid/os/Handler;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, LgY;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, LrB;-><init>(Landroid/content/Context;Lrz;Ljava/lang/String;LFX;Ljava/lang/Class;LLz;Landroid/content/SharedPreferences;LIG;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    const-string v0, "InvitationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, LgY;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)V

    .line 235
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, LgY;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LFX;

    const-string v1, "invitationUrl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_11

    .line 253
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 257
    :goto_10
    return-void

    .line 255
    :cond_11
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_10
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method
