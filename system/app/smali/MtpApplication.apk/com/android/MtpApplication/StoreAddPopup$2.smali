.class Lcom/android/MtpApplication/StoreAddPopup$2;
.super Ljava/lang/Object;
.source "StoreAddPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/MtpApplication/StoreAddPopup;->drawPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/StoreAddPopup;


# direct methods
.method constructor <init>(Lcom/android/MtpApplication/StoreAddPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/MtpApplication/StoreAddPopup$2;->this$0:Lcom/android/MtpApplication/StoreAddPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 116
    const-string v0, "StoreAddPopup"

    const-string v1, "Cancel Button is clicked..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/MtpApplication/StoreAddPopup$2;->this$0:Lcom/android/MtpApplication/StoreAddPopup;

    invoke-virtual {v0}, Lcom/android/MtpApplication/StoreAddPopup;->finish()V

    .line 118
    return-void
.end method
