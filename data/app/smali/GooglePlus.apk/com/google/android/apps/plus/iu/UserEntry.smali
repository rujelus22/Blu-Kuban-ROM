.class public final Lcom/google/android/apps/plus/iu/UserEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "UserEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "users"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        indexed = true
        value = "account"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/apps/plus/iu/UserEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UserEntry;->account:Ljava/lang/String;

    .line 25
    return-void
.end method
