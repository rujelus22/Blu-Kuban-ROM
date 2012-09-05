.class Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$1;
.super Ljava/lang/Object;
.source "PasswordNonceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$1;->this$0:Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$1;->this$0:Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;

    #calls: Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->commitSettings()V
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->access$000(Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;)V

    .line 53
    return-void
.end method
