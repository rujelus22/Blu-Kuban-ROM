.class public final Lcom/sec/android/app/ve/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ProjectListActivity:[I

.field public static final ProjectListActivity_android_galleryItemBackground:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1571
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1572
    const v2, 0x101004c

    aput v2, v0, v1

    .line 1571
    sput-object v0, Lcom/sec/android/app/ve/R$styleable;->ProjectListActivity:[I

    .line 1560
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
