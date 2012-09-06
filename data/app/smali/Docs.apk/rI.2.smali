.class public LrI;
.super LrB;
.source "WebViewOpenActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;Landroid/content/Context;Lrz;Ljava/lang/String;LFX;Ljava/lang/Class;LLz;Landroid/content/SharedPreferences;LIG;Landroid/os/Handler;)V
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
    .line 290
    iput-object p1, p0, LrI;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

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
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, LrI;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-static {v0, p3}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;Ljava/lang/String;)V

    .line 295
    return-void
.end method
