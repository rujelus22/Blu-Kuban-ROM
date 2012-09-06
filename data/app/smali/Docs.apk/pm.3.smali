.class public Lpm;
.super Ljava/lang/Object;
.source "OperationDialogFragment.java"

# interfaces
.implements Lmo;


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lpm;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lpn;

    invoke-direct {v0, p0}, Lpn;-><init>(Lpm;)V

    iput-object v0, p0, Lpm;->a:Landroid/os/Handler;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmp;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lpm;->a:Ljava/util/Map;

    .line 71
    return-void
.end method

.method static synthetic a(Lpm;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lpm;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lpm;->a:Landroid/os/Handler;

    iget-object v1, p0, Lpm;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    return-void
.end method
