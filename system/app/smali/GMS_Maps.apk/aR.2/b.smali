.class Lar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field final synthetic a:Lar/e;

.field final synthetic b:Lar/a;


# direct methods
.method constructor <init>(Lar/a;Lar/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lar/b;->b:Lar/a;

    iput-object p2, p0, Lar/b;->a:Lar/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 167
    const/16 v0, 0xa

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lar/b;->a:Lar/e;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Lar/b;->a:Lar/e;

    invoke-interface {v0}, Lar/e;->a()V

    .line 175
    :cond_9
    return-void
.end method
