.class final Lcom/cooliris/media/PicasaDataSource$PhotoProjection;
.super Lcom/cooliris/picasa/Entry;
.source "PicasaDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/PicasaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhotoProjection"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/cooliris/picasa/EntrySchema;


# instance fields
.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "content_type"
    .end annotation
.end field

.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "content_url"
    .end annotation
.end field

.field public dateTaken:J
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "date_taken"
    .end annotation
.end field

.field public editUri:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "edit_uri"
    .end annotation
.end field

.field public htmlPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "html_page_url"
    .end annotation
.end field

.field public latitude:D
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "latitude"
    .end annotation
.end field

.field public longitude:D
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "longitude"
    .end annotation
.end field

.field public screennailUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "screennail_url"
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "summary"
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "thumbnail_url"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 279
    new-instance v0, Lcom/cooliris/picasa/EntrySchema;

    const-class v1, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;

    invoke-direct {v0, v1}, Lcom/cooliris/picasa/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/cooliris/picasa/Entry;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cooliris/media/PicasaDataSource$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;-><init>()V

    return-void
.end method
