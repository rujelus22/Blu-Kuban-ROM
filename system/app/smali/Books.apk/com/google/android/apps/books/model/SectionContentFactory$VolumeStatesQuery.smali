.class interface abstract Lcom/google/android/apps/books/model/SectionContentFactory$VolumeStatesQuery;
.super Ljava/lang/Object;
.source "SectionContentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/SectionContentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VolumeStatesQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 474
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "last_access"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text_zoom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/model/SectionContentFactory$VolumeStatesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
