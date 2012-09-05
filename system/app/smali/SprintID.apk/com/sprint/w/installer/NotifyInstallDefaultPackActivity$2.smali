.class Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$2;
.super Ljava/lang/Object;
.source "NotifyInstallDefaultPackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$2;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$2;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->finish()V

    .line 138
    return-void
.end method
