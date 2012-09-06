.class final Lcom/android/athome/picker/b/b;
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
    .line 118
    iput-object p1, p0, Lcom/android/athome/picker/b/b;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/athome/picker/b/b;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 122
    iget-object v0, p0, Lcom/android/athome/picker/b/b;->a:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/b;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)V

    .line 124
    :cond_13
    return-void
.end method
