.class public Lcom/infraware/filemanager/define/FMDefine$Sort;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sort"
.end annotation


# static fields
.field public static final DATE:I = 0x2

.field public static final NAME:I = 0x1

.field public static final NONE:I = 0x0

.field public static final SIZE:I = 0x3

.field public static final TYPE:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$Sort;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
