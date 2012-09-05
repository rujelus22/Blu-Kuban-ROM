.class Lcom/sprint/w/installer/RssPackDetails$6;
.super Ljava/lang/Object;
.source "RssPackDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssPackDetails;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackDetails$6;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dlg"
    .parameter "whichButton"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$6;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    #calls: Lcom/sprint/w/installer/RssPackDetails;->installPack()V
    invoke-static {v0}, Lcom/sprint/w/installer/RssPackDetails;->access$000(Lcom/sprint/w/installer/RssPackDetails;)V

    .line 346
    return-void
.end method
