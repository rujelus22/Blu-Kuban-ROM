.class public Lcom/infraware/common/define/CMDefine$BaseRequest;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseRequest"
.end annotation


# static fields
.field public static final CM:I = 0x100

.field public static final DM:I = 0x300

.field public static final FM:I = 0x200

.field public static final PO:I = 0x1000


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$BaseRequest;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
