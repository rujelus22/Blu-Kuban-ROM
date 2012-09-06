.class Lnu;
.super Ljava/lang/Object;
.source "EntryViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lld;


# direct methods
.method public constructor <init>(Lld;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lnu;->a:Lld;

    .line 128
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnu;->a:Lld;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b(Landroid/content/Context;Lld;)V

    .line 133
    return-void
.end method
