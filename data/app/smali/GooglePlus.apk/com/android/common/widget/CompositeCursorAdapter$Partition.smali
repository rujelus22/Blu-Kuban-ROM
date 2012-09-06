.class public Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.super Ljava/lang/Object;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/widget/CompositeCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# instance fields
.field count:I

.field cursor:Landroid/database/Cursor;

.field hasHeader:Z

.field idColumnIndex:I

.field showIfEmpty:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    .line 43
    iput-boolean p2, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    .line 44
    return-void
.end method
