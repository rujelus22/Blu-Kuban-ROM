.class public final Lcom/sec/android/app/sns/db/SnsDB$Searching;
.super Ljava/lang/Object;
.source "SnsDB.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/db/SnsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Searching"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3247
    const-string v0, "content://com.sec.android.app.provider.sns/searching"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sns/db/SnsDB$Searching;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3245
    return-void
.end method
