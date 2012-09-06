.class public LjN;
.super Ljava/lang/Object;
.source "TabletDocListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, LjN;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, LjN;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b_()V

    .line 766
    return-void
.end method
