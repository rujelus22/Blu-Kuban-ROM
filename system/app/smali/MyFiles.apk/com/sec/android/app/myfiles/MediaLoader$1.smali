.class Lcom/sec/android/app/myfiles/MediaLoader$1;
.super Ljava/lang/Object;
.source "MediaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/MediaLoader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/MediaLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/MediaLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/sec/android/app/myfiles/MediaLoader$1;->this$0:Lcom/sec/android/app/myfiles/MediaLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 527
    return-void
.end method
