.class final Lcom/android/athome/picker/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/athome/picker/b/o;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/athome/picker/b/o;->a:Lcom/android/athome/picker/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Z)Z

    .line 576
    return-void
.end method
