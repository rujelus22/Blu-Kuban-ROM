.class Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$9;
.super Ljava/lang/Object;
.source "Ui3dMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->initListButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$9;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$9;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->onGotoList(Landroid/view/View;)V

    .line 1380
    return-void
.end method
