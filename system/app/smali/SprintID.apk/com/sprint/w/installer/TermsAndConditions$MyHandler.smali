.class Lcom/sprint/w/installer/TermsAndConditions$MyHandler;
.super Ljava/lang/Object;
.source "TermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/TermsAndConditions;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/TermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/TermsAndConditions;Lcom/sprint/w/installer/TermsAndConditions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;-><init>(Lcom/sprint/w/installer/TermsAndConditions;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "genericTC"
    .parameter "packTC"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iput-object p1, v0, Lcom/sprint/w/installer/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iput-object p2, v0, Lcom/sprint/w/installer/TermsAndConditions;->mPackTc:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v1, v1, Lcom/sprint/w/installer/TermsAndConditions;->mLoadContent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/TermsAndConditions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method
