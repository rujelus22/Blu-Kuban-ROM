.class Lcom/android/musicvis/vis4/Visualization4RS$1;
.super Ljava/lang/Object;
.source "Visualization4RS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/vis4/Visualization4RS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicvis/vis4/Visualization4RS;


# direct methods
.method constructor <init>(Lcom/android/musicvis/vis4/Visualization4RS;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/musicvis/vis4/Visualization4RS$1;->this$0:Lcom/android/musicvis/vis4/Visualization4RS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/musicvis/vis4/Visualization4RS$1;->this$0:Lcom/android/musicvis/vis4/Visualization4RS;

    invoke-virtual {v0}, Lcom/android/musicvis/vis4/Visualization4RS;->updateWave()V

    .line 41
    return-void
.end method
