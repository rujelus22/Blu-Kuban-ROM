.class public abstract Lcom/google/android/apps/docs/GuiceContentProvider;
.super Landroid/content/ContentProvider;
.source "GuiceContentProvider.java"

# interfaces
.implements LcK;


# instance fields
.field protected a:Lck;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/docs/GuiceContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/docs/GuiceContentProvider;->a()Lans;

    move-result-object v1

    .line 24
    const-class v0, Lck;

    invoke-interface {v1, v0}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Lcom/google/android/apps/docs/GuiceContentProvider;->a:Lck;

    .line 25
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceContentProvider;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/GuiceContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lck;->a(Landroid/content/Context;)V

    .line 26
    invoke-interface {v1, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
