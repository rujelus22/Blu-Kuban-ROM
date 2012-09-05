.class Lcom/sec/android/app/music/TrackBrowserActivity$18;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->makeDeleteItemsHeader(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$18;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$18;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1183
    return-void
.end method
