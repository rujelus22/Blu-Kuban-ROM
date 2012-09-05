.class Lcom/google/android/music/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/google/android/music/TabRow$OnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/Workspace;->setTabHolder(Lcom/google/android/music/TabRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/Workspace;


# direct methods
.method constructor <init>(Lcom/google/android/music/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/music/Workspace$1;->this$0:Lcom/google/android/music/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabClicked(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/music/Workspace$1;->this$0:Lcom/google/android/music/Workspace;

    invoke-virtual {v0, p1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 135
    return-void
.end method
