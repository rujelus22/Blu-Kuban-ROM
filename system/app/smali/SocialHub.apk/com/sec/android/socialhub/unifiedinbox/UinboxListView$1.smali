.class Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$1;
.super Ljava/lang/Object;
.source "UinboxListView.java"

# interfaces
.implements Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->setAllMessageCount()V

    .line 92
    return-void
.end method
