.class public Lcom/cooliris/app/Res;
.super Ljava/lang/Object;
.source "Res.java"


# static fields
.field public static final array:Lcom/cooliris/media/R$array;

.field public static final attr:Lcom/cooliris/media/R$attr;

.field public static final drawable:Lcom/cooliris/media/R$drawable;

.field public static final id:Lcom/cooliris/media/R$id;

.field public static final layout:Lcom/cooliris/media/R$layout;

.field public static final string:Lcom/cooliris/media/R$string;

.field public static final xml:Lcom/cooliris/media/R$xml;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/cooliris/media/R$array;

    invoke-direct {v0}, Lcom/cooliris/media/R$array;-><init>()V

    sput-object v0, Lcom/cooliris/app/Res;->array:Lcom/cooliris/media/R$array;

    .line 25
    new-instance v0, Lcom/cooliris/media/R$attr;

    invoke-direct {v0}, Lcom/cooliris/media/R$attr;-><init>()V

    sput-object v0, Lcom/cooliris/app/Res;->attr:Lcom/cooliris/media/R$attr;

    .line 30
    new-instance v0, Lcom/cooliris/media/R$drawable;

    invoke-direct {v0}, Lcom/cooliris/media/R$drawable;-><init>()V

    sput-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    .line 32
    new-instance v0, Lcom/cooliris/media/R$id;

    invoke-direct {v0}, Lcom/cooliris/media/R$id;-><init>()V

    sput-object v0, Lcom/cooliris/app/Res;->id:Lcom/cooliris/media/R$id;

    .line 35
    new-instance v0, Lcom/cooliris/media/R$layout;

    invoke-direct {v0}, Lcom/cooliris/media/R$layout;-><init>()V

    sput-object v0, Lcom/cooliris/app/Res;->layout:Lcom/cooliris/media/R$layout;

    .line 39
    new-instance v0, Lcom/cooliris/media/R$string;

    invoke-direct {v0}, Lcom/cooliris/media/R$string;-><init>()V

    sput-object v0, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    .line 43
    new-instance v0, Lcom/cooliris/media/R$xml;

    invoke-direct {v0}, Lcom/cooliris/media/R$xml;-><init>()V

    sput-object v0, Lcom/cooliris/app/Res;->xml:Lcom/cooliris/media/R$xml;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
