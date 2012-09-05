.class public Lcom/infraware/office/evengine/EV$BOOK_CLIP;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BOOK_CLIP"
.end annotation


# instance fields
.field public szClipName:Ljava/lang/String;

.field public szFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 3
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    .line 312
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    .line 316
    return-void
.end method
