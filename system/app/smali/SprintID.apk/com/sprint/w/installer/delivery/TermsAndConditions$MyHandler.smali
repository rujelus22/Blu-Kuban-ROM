.class Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;
.super Ljava/lang/Object;
.source "TermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;Lcom/sprint/w/installer/delivery/TermsAndConditions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;-><init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;)V
    .registers 4
    .parameter "genericTC"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iput-object p1, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mLoadContent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method
