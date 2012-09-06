.class public Lcom/google/android/apps/googlevoice/LocalBinder;
.super Landroid/os/Binder;
.source "LocalBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# instance fields
.field private final service:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/google/android/apps/googlevoice/LocalBinder;,"Lcom/google/android/apps/googlevoice/LocalBinder<TT;>;"
    .local p1, s:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LocalBinder;->service:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method getService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/google/android/apps/googlevoice/LocalBinder;,"Lcom/google/android/apps/googlevoice/LocalBinder<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LocalBinder;->service:Ljava/lang/Object;

    return-object v0
.end method
