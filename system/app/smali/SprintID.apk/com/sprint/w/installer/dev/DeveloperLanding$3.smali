.class Lcom/sprint/w/installer/dev/DeveloperLanding$3;
.super Ljava/lang/Object;
.source "DeveloperLanding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/dev/DeveloperLanding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/dev/DeveloperLanding;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$3;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$3;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/dev/DeveloperLanding;->showDialog(I)V

    .line 150
    return-void
.end method
