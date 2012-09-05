.class public Lcom/infraware/common/define/CMDefine$ContentType;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentType"
.end annotation


# static fields
.field public static final DOC:I = 0x1

.field public static final DOCX:I = 0x4

.field public static final IMG:I = 0xa

.field public static final NONE:I = 0x0

.field public static final PPT:I = 0x2

.field public static final PPTX:I = 0x5

.field public static final XLS:I = 0x3

.field public static final XLSX:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$ContentType;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
