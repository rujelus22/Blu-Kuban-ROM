.class public Laas;
.super Ljava/lang/Object;
.source "DocListView.java"

# interfaces
.implements LTg;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DocListView;

.field private final a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DocListView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Laas;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-boolean p2, p0, Laas;->a:Z

    .line 332
    return-void
.end method

.method static synthetic a(Laas;)Z
    .registers 2
    .parameter

    .prologue
    .line 328
    iget-boolean v0, p0, Laas;->a:Z

    return v0
.end method


# virtual methods
.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Laas;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Lcom/google/android/apps/docs/RoboFragmentActivity;

    move-result-object v0

    new-instance v1, Laat;

    invoke-direct {v1, p0, p1}, Laat;-><init>(Laas;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method
