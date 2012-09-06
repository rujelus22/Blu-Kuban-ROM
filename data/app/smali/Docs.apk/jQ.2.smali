.class public LjQ;
.super Ljava/lang/Object;
.source "TabletDocListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

.field final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, LjQ;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iput-object p2, p0, LjQ;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 1074
    iget-object v0, p0, LjQ;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "tabletBreadcrumbEvent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1076
    iget-object v0, p0, LjQ;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    iget-object v1, p0, LjQ;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lkc;->a(Ljava/util/List;)V

    .line 1077
    return-void
.end method
