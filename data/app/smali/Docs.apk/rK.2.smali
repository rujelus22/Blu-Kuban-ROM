.class public LrK;
.super Ljava/lang/Object;
.source "WebViewOpenActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, LrK;->a:Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;LrG;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, LrK;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 75
    const-string v0, "{ \"hideFooter\": 1 }"

    return-object v0
.end method
