.class public Lcom/android/email/activity/ContactStatusLoader$Result;
.super Ljava/lang/Object;
.source "ContactStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ContactStatusLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field public static final UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;


# instance fields
.field public final mLookupUri:Landroid/net/Uri;

.field public final mPhoto:Landroid/graphics/Bitmap;

.field public final mPresenceResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/android/email/activity/ContactStatusLoader$Result;

    const v1, 0x108006a

    invoke-direct {v0, v2, v1, v2}, Lcom/android/email/activity/ContactStatusLoader$Result;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    sput-object v0, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V
    .registers 4
    .parameter "photo"
    .parameter "presenceResId"
    .parameter "lookupUri"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    .line 78
    iput p2, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mPresenceResId:I

    .line 79
    iput-object p3, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 80
    return-void
.end method


# virtual methods
.method public isUnknown()Z
    .registers 3

    .prologue
    .line 83
    const v0, 0x108006a

    iget v1, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mPresenceResId:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
