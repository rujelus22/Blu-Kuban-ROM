.class public Lcom/infraware/filemanager/define/FMDefine$SearchType;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchType"
.end annotation


# static fields
.field public static final SEARCH_DOC:I = 0x1

.field public static final SEARCH_KEY:I = 0x0

.field public static final SEARCH_PDF:I = 0x4

.field public static final SEARCH_PPT:I = 0x3

.field public static final SEARCH_XLS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$SearchType;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
