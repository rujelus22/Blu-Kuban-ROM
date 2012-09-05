.class Lcom/sec/android/app/twlauncher/Search$1$1;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Search$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Search$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Search$1;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Search$1$1;->this$1:Lcom/sec/android/app/twlauncher/Search$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search$1$1;->this$1:Lcom/sec/android/app/twlauncher/Search$1;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Search$1;->this$0:Lcom/sec/android/app/twlauncher/Search;

    #calls: Lcom/sec/android/app/twlauncher/Search;->showSearchDialog()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Search;->access$100(Lcom/sec/android/app/twlauncher/Search;)V

    .line 120
    return-void
.end method
