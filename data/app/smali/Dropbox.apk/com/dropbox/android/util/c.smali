.class final Lcom/dropbox/android/util/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/d;

.field final synthetic b:Lcom/dropbox/android/util/e;

.field final synthetic c:Ljava/util/Collection;

.field final synthetic d:Lcom/dropbox/android/util/Z;


# direct methods
.method constructor <init>(Lcom/dropbox/android/util/d;Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/dropbox/android/util/c;->a:Lcom/dropbox/android/util/d;

    iput-object p2, p0, Lcom/dropbox/android/util/c;->b:Lcom/dropbox/android/util/e;

    iput-object p3, p0, Lcom/dropbox/android/util/c;->c:Ljava/util/Collection;

    iput-object p4, p0, Lcom/dropbox/android/util/c;->d:Lcom/dropbox/android/util/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dropbox/android/util/c;->a:Lcom/dropbox/android/util/d;

    iget-object v1, p0, Lcom/dropbox/android/util/c;->b:Lcom/dropbox/android/util/e;

    iget-object v2, p0, Lcom/dropbox/android/util/c;->c:Ljava/util/Collection;

    iget-object v3, p0, Lcom/dropbox/android/util/c;->d:Lcom/dropbox/android/util/Z;

    invoke-interface {v0, v1, v2, v3}, Lcom/dropbox/android/util/d;->a(Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)V

    .line 272
    return-void
.end method
