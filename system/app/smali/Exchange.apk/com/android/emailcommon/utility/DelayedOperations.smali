.class public Lcom/android/emailcommon/utility/DelayedOperations;
.super Ljava/lang/Object;
.source "DelayedOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
    }
.end annotation


# instance fields
.field final mPendingOperations:Ljava/util/LinkedList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;",
            ">;"
        }
    .end annotation
.end field
