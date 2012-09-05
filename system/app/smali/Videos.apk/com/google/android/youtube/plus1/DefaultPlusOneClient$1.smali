.class Lcom/google/android/youtube/plus1/DefaultPlusOneClient$1;
.super Ljava/lang/Object;
.source "DefaultPlusOneClient.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/plus1/DefaultPlusOneClient;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/plus1/DefaultPlusOneClient;

.field final synthetic val$plusOneDeveloperKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/plus1/DefaultPlusOneClient;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$1;->this$0:Lcom/google/android/youtube/plus1/DefaultPlusOneClient;

    iput-object p2, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$1;->val$plusOneDeveloperKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$1;->val$plusOneDeveloperKey:Ljava/lang/String;

    return-object v0
.end method
