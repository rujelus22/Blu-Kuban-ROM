.class public final enum Lcom/cooliris/media/LocalDataSource$MimeFilterType;
.super Ljava/lang/Enum;
.source "LocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/LocalDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MimeFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cooliris/media/LocalDataSource$MimeFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cooliris/media/LocalDataSource$MimeFilterType;

.field public static final enum MIME_FILTER_3GP:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

.field public static final enum MIME_FILTER_JPG:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

.field public static final enum MIME_FILTER_NONE:Lcom/cooliris/media/LocalDataSource$MimeFilterType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    const-string v1, "MIME_FILTER_NONE"

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/LocalDataSource$MimeFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_NONE:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    new-instance v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    const-string v1, "MIME_FILTER_3GP"

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/LocalDataSource$MimeFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_3GP:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    new-instance v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    const-string v1, "MIME_FILTER_JPG"

    invoke-direct {v0, v1, v4}, Lcom/cooliris/media/LocalDataSource$MimeFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_JPG:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    sget-object v1, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_NONE:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_3GP:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_JPG:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->$VALUES:[Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cooliris/media/LocalDataSource$MimeFilterType;
    .registers 2
    .parameter

    .prologue
    .line 97
    const-class v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    return-object v0
.end method

.method public static values()[Lcom/cooliris/media/LocalDataSource$MimeFilterType;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->$VALUES:[Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    invoke-virtual {v0}, [Lcom/cooliris/media/LocalDataSource$MimeFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    return-object v0
.end method
