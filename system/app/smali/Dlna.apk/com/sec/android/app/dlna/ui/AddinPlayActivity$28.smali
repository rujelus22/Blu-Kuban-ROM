.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$28;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->inNotifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2237
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$28;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$28;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->notifyDataSetChanged()V

    .line 2240
    return-void
.end method
