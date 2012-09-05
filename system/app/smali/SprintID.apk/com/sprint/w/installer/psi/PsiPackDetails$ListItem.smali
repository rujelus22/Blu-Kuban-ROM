.class abstract Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ListItem"
.end annotation


# static fields
.field static final TYPE_CLICKABLE_TWOLINER:I = 0x2

.field static final TYPE_COUNT:I = 0x6

.field static final TYPE_DIVIDER:I = 0x0

.field static final TYPE_ONELINER:I = 0x5

.field static final TYPE_PLAY_VIDEO:I = 0x3

.field static final TYPE_SCREENSHOTS:I = 0x4

.field static final TYPE_WEBVIEW:I = 0x1


# instance fields
.field mType:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getType()I
    .registers 2

    .prologue
    .line 537
    iget v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;->mType:I

    return v0
.end method
