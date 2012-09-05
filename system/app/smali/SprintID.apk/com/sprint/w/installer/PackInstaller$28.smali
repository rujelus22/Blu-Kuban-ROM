.class Lcom/sprint/w/installer/PackInstaller$28;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 2448
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$28;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$28;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$28;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller;->mStatusMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2452
    return-void
.end method
