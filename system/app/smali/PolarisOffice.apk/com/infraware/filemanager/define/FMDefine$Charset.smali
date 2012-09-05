.class public Lcom/infraware/filemanager/define/FMDefine$Charset;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Charset"
.end annotation


# static fields
.field public static final ENG:Ljava/lang/String; = "UTF-8"

.field public static final JPN:Ljava/lang/String; = "Shift-JIS"

.field public static final KOR:Ljava/lang/String; = "windows-949"


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$Charset;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
