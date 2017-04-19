using NUnit.Framework;

namespace SampleApp.UnitTests
{
	[TestFixture]
	public class Test
	{
		MyClass subject;

		[SetUp]
		public void SetUp()
		{
			subject = new MyClass();
		}

		[Test]
		public void TestAdd()
		{
			Assert.AreEqual(3, subject.Add(1, 2));
		}

		[Test]
		public void TestFail()
		{
			Assert.True(true);
		}
	}
}
