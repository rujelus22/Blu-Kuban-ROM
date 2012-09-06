.class Lnz;
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
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lnz;->a:Lld;

    .line 141
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnz;->a:Lld;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Landroid/content/Context;Lld;)V

    .line 146
    return-void
.end method
