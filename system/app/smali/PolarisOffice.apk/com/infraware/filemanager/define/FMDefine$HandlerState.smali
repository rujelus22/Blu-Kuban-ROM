.class public Lcom/infraware/filemanager/define/FMDefine$HandlerState;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerState"
.end annotation


# static fields
.field public static final FILE_DONE:I = 0x9

.field public static final INIT_STATE:I = 0x0

.field public static final PROG_CANCEL:I = 0x7

.field public static final PROG_END:I = 0x5

.field public static final PROG_FAIL:I = 0x8

.field public static final PROG_INC:I = 0x3

.field public static final PROG_START:I = 0x1

.field public static final PROG_SUCCESS:I = 0x6

.field public static final PROG_UNIT:I = 0x2

.field public static final PROG_VAL:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$HandlerState;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
