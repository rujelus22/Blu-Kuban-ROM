.class public Lcom/infraware/filemanager/define/FMDefine$Operation;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Operation"
.end annotation


# static fields
.field public static final COPY:I = 0x0

.field public static final DELETE:I = 0x2

.field public static final DOWNLOAD:I = 0xc

.field public static final LOGIN:I = 0xa

.field public static final MOVE:I = 0x1

.field public static final RENAME:I = 0x3

.field public static final SEARCH:I = 0x14

.field public static final UPLOAD:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$Operation;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
