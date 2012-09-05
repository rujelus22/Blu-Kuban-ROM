.class Lcom/sec/android/app/music/AudioPreview$9;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/AudioPreview;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$9;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$9;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->doPlay()V

    .line 1278
    return-void
.end method
