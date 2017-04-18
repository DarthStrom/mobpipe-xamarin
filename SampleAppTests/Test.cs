using NUnit.Framework;
using SampleApp;

namespace SampleAppTests
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
			Assert.AreEqual(subject.Add(1, 2), 3);
		}

		[Test]
		public void TestFail()
		{
			Assert.True(true);
		}
	}
}
