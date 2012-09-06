.class public LjK;
.super Ljava/lang/Object;
.source "TabletDocListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/MenuItem;

.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, LjK;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iput-object p2, p0, LjK;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, LjK;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v1, p0, LjK;->a:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Landroid/view/MenuItem;)Z

    .line 581
    return-void
.end method
