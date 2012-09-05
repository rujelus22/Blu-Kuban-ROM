.class public final Lcom/cooliris/picasa/UserEntry;
.super Lcom/cooliris/picasa/Entry;
.source "UserEntry.java"


# annotations
.annotation runtime Lcom/cooliris/picasa/Entry$Table;
    value = "users"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/cooliris/picasa/EntrySchema;


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "account"
    .end annotation
.end field

.field public albumsEtag:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "albums_etag"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Lcom/cooliris/picasa/EntrySchema;

    const-class v1, Lcom/cooliris/picasa/UserEntry;

    invoke-direct {v0, v1}, Lcom/cooliris/picasa/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/cooliris/picasa/UserEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cooliris/picasa/Entry;-><init>()V

    return-void
.end method
