.class final Lcom/dropbox/android/widget/CustomTabView/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/CustomTabView/e;

.field final synthetic b:Lcom/dropbox/android/widget/CustomTabView/c;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/CustomTabView/c;Lcom/dropbox/android/widget/CustomTabView/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dropbox/android/widget/CustomTabView/d;->b:Lcom/dropbox/android/widget/CustomTabView/c;

    iput-object p2, p0, Lcom/dropbox/android/widget/CustomTabView/d;->a:Lcom/dropbox/android/widget/CustomTabView/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/d;->a:Lcom/dropbox/android/widget/CustomTabView/e;

    iget-object v1, p0, Lcom/dropbox/android/widget/CustomTabView/d;->b:Lcom/dropbox/android/widget/CustomTabView/c;

    iget-object v1, v1, Lcom/dropbox/android/widget/CustomTabView/c;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-interface {v0, v1}, Lcom/dropbox/android/widget/CustomTabView/e;->b(Lcom/dropbox/android/widget/CustomTabView/a;)V

    .line 28
    return-void
.end method
